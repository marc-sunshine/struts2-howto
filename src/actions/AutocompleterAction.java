package actions;

import java.util.ArrayList;
import java.util.List;

import models.Customer;
import models.CustomerDAO;

import org.apache.commons.lang.StringUtils;
// import org.apache.struts2.convention.annotation.*;

public class AutocompleterAction extends ActionMySupport {

        private static final long       serialVersionUID        = -3066791113091431706L;
        private static String[]         staticLanguages         = {
			"Actionscript (Flash)", "ABAP Objects", "Ada", "Aleph", "AppleScript", "Beta", "BlitzMax", "Boo", "C++", "C#", "Cecil", "Clarion", "Cobol ISO 2002", "CoDeSys", "CFML (ColdFusion Markup Language)", "Common Lisp Object System (CLOS)", "Component Pascal", "CorbaScript",
			"D", "Delphi", "Eiffel", "Fpii", "Fortran - ab Fortran 2003", "Gambas", "IDL", "IDLscript", "incr Tcl", "Java", "JavaScript / ECMAScript", "Lexico", "Lingo", "Modula-3", "Modelica", "NewtonScript", "Oberon", "Objective-C", "Objective CAML", "Object Pascal", "Perl",
			"PHP", "PowerBuilder", "Progress OpenEdge", "Python", "Ruby", "R", "Sather", "Scala", "Seed7", "Self", "Simula", "Smalltalk", "SuperCollider", "Superx++", "STOOOP", "Visual Basic", "Visual Basic .NET (VB.NET)", "Visual Basic Script", "Visual Objects", "XBase",
			"XOTcl", "Zonnon"
        };

        private String    term;
        private String[]  languages  = AutocompleterAction.staticLanguages;

        
        /*
        @Actions( {
            @Action(value = "/autocompleter-select", results = {
                    @Result(location = "autocompleter-select.jsp", name = "success")
            }), @Action(value = "/autocompleter", results = {
                    @Result(location = "autocompleter.jsp", name = "success")
            }), @Action(value = "/jsonlanguages", results = {
                    @Result(type = "json", name = "success", params = { "root", "languages" })
            })
        })
        */
        
        
        public String execute() throws Exception {
                if (term != null && term.length() > 1)
                {
                        ArrayList<String> tmp = new ArrayList<String>();
                        for (int i = 0; i < staticLanguages.length; i++)
                        {
                                if (StringUtils.contains(staticLanguages[i].toLowerCase(), term.toLowerCase()))
                                {
                                        tmp.add(staticLanguages[i]);
                                }
                        }
                        languages = tmp.toArray(new String[tmp.size()]);
                }
                return SUCCESS;
        }

        public String[] getLanguages() {
                return languages;
        }

        public void setTerm(String term) {
                this.term = term;
        }

        public List<Customer> getCustomers() {
                return CustomerDAO.buildList();
        }

}

