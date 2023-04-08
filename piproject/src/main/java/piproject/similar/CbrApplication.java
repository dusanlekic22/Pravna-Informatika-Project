package piproject.similar;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Interval;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import piproject.similar.model.CaseDescription;

public class CbrApplication implements StandardCBRApplication {
	
	Connector _connector;  /** Connector object */
	CBRCaseBase _caseBase;  /** CaseBase object */

	NNConfig simConfig;  /** KNN configuration */

	Collection<RetrievalResult> eval = new ArrayList<RetrievalResult>();
	
	public void configure() throws ExecutionException {
		_connector =  new CsvConnector();
		
		_caseBase = new LinealCaseBase();  // Create a Lineal case base for in-memory organization
		
		simConfig = new NNConfig(); // KNN configuration
		simConfig.setDescriptionSimFunction(new Average());  // global similarity function = average
		
		simConfig.addMapping(new Attribute("krivicnoDeloZOSRA", CaseDescription.class), new Equal());
		simConfig.addMapping(new Attribute("krivicnoDeloKZ", CaseDescription.class), new Equal());
		simConfig.addMapping(new Attribute("brojRiba", CaseDescription.class), new Interval(4));
		TabularSimilarity slicnostPropisa = new TabularSimilarity(Arrays.asList(new String[] {
				"čl. 2 KZ",
				"čl. 3 KZ",
				"čl. 4 st. 2 KZ",
				"čl. 5 KZ",
				"čl. 13 KZ",
				"čl. 15 KZ",
				"čl. 32 KZ",
				"čl. 34 KZ",
				"čl. 36 KZ",
				"čl. 36 st. 1 KZ",
				"čl. 41 KZ",
				"čl. 42 KZ",
				"čl. 42 st. 1 KZ",
				"čl. 52 st. 1 KZ",
				"čl. 52 st. 2 KZ",
				"čl. 53 KZ",
				"čl. 54 KZ",
				"čl. 326 st. 4 KZ",
				"čl. 226 ZOKP",
				"čl. 226. st. 2. tačka 9. ZOKP",
				"čl. 227 ZOKP",
				"čl. 229 ZOKP",
				"čl. 374 ZOKP",}));
		slicnostPropisa.setSimilarity("čl. 36 KZ", "čl. 36 st. 1 KZ", 1);
		slicnostPropisa.setSimilarity("čl. 42 KZ", "čl. 42 st. 1 KZ", 1);
		slicnostPropisa.setSimilarity("čl. 52 st. 1 KZ", "čl. 52 st. 2 KZ", .5);
		slicnostPropisa.setSimilarity("čl. 226 ZOKP", "čl. 226. st. 2. tačka 9. ZOKP", 1);
		simConfig.addMapping(new Attribute("primenjeniPropisi", CaseDescription.class), slicnostPropisa);
		
		// Equal - returns 1 if both individuals are equal, otherwise returns 0
		// Interval - returns the similarity of two number inside an interval: sim(x,y) = 1-(|x-y|/interval)
		// Threshold - returns 1 if the difference between two numbers is less than a threshold, 0 in the other case
		// EqualsStringIgnoreCase - returns 1 if both String are the same despite case letters, 0 in the other case
		// MaxString - returns a similarity value depending of the biggest substring that belong to both strings
		// EnumDistance - returns the similarity of two enum values as the their distance: sim(x,y) = |ord(x) - ord(y)|
		// EnumCyclicDistance - computes the similarity between two enum values as their cyclic distance
		// Table - uses a table to obtain the similarity between two values. Allowed values are Strings or Enums. The table is read from a text file.
		// TabularSimilarity - calculates similarity between two strings or two lists of strings on the basis of tabular similarities
	}

	public void cycle(CBRQuery query) throws ExecutionException {
		eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
		eval = SelectCases.selectTopKRR(eval, 5);
		System.out.println("Retrieved cases:");
		for (RetrievalResult nse : eval)
			System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
	}

	public void postCycle() throws ExecutionException {
		
	}

	public CBRCaseBase preCycle() throws ExecutionException {
		_caseBase.init(_connector);
		java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
		return _caseBase;
	}

	public static void main(String[] args) {
		StandardCBRApplication recommender = new CbrApplication();
		try {
			recommender.configure();

			recommender.preCycle();

			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();
			
			caseDescription.setKrivicnoDeloZOSRA("cl. 289 st. 3 KZ");
			caseDescription.setKrivicnoDeloKZ("cl. 289 st. 3 KZ");
			List<String> primenjeniPropisi = new ArrayList();
			primenjeniPropisi.add("čl. 36 KZ");
			caseDescription.setPrimenjeniPropisi(primenjeniPropisi);
			caseDescription.setBrojRiba(2);
			
			query.setDescription( caseDescription );

			recommender.cycle(query);

			recommender.postCycle();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Collection<RetrievalResult> getEval() {
		return eval;
	}

	public void setEval(Collection<RetrievalResult> eval) {
		this.eval = eval;
	}
}