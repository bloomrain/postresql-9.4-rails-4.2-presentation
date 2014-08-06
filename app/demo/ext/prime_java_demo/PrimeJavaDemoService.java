// basics
import java.io.IOException;
import org.jruby.IRuby;
import org.jruby.runtime.load.BasicLibraryService;

// app specific
import org.jruby.RubyClass;
import org.jruby.RubyModule;
import org.jruby.runtime.builtin.IRubyObject;

public class PrimeJavaDemoService implements BasicLibraryService {
   public boolean basicLoad(IRuby runtime) throws IOException {
     RubyModule mPrimeJava = runtime.defineModule("PrimeJava");
     RubyModule mDemo = runtime.defineModuleUnder("Demo");
     return true;
   }
}
