Module: penstock-cli
Synopsis: Command-line argument parsing, options dispatch, and validation
Author: Aneesh Krishna
Copyright: (C) 2026 Aneesh Krishna. All rights reserved.
License: MIT



define class <cli-options> (<object>)
  slot command :: <string> = "help";
  slot input-file :: <string> = "";
  slot output-file :: <string> = "";
  slot duration :: <float> = 10.0;
  slot verbose? :: <boolean> = false;
end class <cli-options>;

define generic parse-arguments (args :: <stretchy-vector>) => (opts :: <cli-options>);
define method parse-arguments (args :: <stretchy-vector>) => (opts :: <cli-options>)
  let opts = make(<cli-options>);
  if (args.size > 0)
    opts.command := args[0];
  end if;
  opts;
end method parse-arguments;


define class <cli-subcommand-handler-1> (<object>)
  slot subcommand-name :: <string> = "cmd-1";
end class <cli-subcommand-handler-1>;

define generic execute-subcommand-1 (h :: <cli-subcommand-handler-1>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-1 (h :: <cli-subcommand-handler-1>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-1;


define class <cli-subcommand-handler-2> (<object>)
  slot subcommand-name :: <string> = "cmd-2";
end class <cli-subcommand-handler-2>;

define generic execute-subcommand-2 (h :: <cli-subcommand-handler-2>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-2 (h :: <cli-subcommand-handler-2>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-2;


define class <cli-subcommand-handler-3> (<object>)
  slot subcommand-name :: <string> = "cmd-3";
end class <cli-subcommand-handler-3>;

define generic execute-subcommand-3 (h :: <cli-subcommand-handler-3>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-3 (h :: <cli-subcommand-handler-3>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-3;


define class <cli-subcommand-handler-4> (<object>)
  slot subcommand-name :: <string> = "cmd-4";
end class <cli-subcommand-handler-4>;

define generic execute-subcommand-4 (h :: <cli-subcommand-handler-4>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-4 (h :: <cli-subcommand-handler-4>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-4;


define class <cli-subcommand-handler-5> (<object>)
  slot subcommand-name :: <string> = "cmd-5";
end class <cli-subcommand-handler-5>;

define generic execute-subcommand-5 (h :: <cli-subcommand-handler-5>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-5 (h :: <cli-subcommand-handler-5>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-5;


define class <cli-subcommand-handler-6> (<object>)
  slot subcommand-name :: <string> = "cmd-6";
end class <cli-subcommand-handler-6>;

define generic execute-subcommand-6 (h :: <cli-subcommand-handler-6>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-6 (h :: <cli-subcommand-handler-6>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-6;


define class <cli-subcommand-handler-7> (<object>)
  slot subcommand-name :: <string> = "cmd-7";
end class <cli-subcommand-handler-7>;

define generic execute-subcommand-7 (h :: <cli-subcommand-handler-7>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-7 (h :: <cli-subcommand-handler-7>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-7;


define class <cli-subcommand-handler-8> (<object>)
  slot subcommand-name :: <string> = "cmd-8";
end class <cli-subcommand-handler-8>;

define generic execute-subcommand-8 (h :: <cli-subcommand-handler-8>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-8 (h :: <cli-subcommand-handler-8>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-8;


define class <cli-subcommand-handler-9> (<object>)
  slot subcommand-name :: <string> = "cmd-9";
end class <cli-subcommand-handler-9>;

define generic execute-subcommand-9 (h :: <cli-subcommand-handler-9>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-9 (h :: <cli-subcommand-handler-9>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-9;


define class <cli-subcommand-handler-10> (<object>)
  slot subcommand-name :: <string> = "cmd-10";
end class <cli-subcommand-handler-10>;

define generic execute-subcommand-10 (h :: <cli-subcommand-handler-10>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-10 (h :: <cli-subcommand-handler-10>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-10;


define class <cli-subcommand-handler-11> (<object>)
  slot subcommand-name :: <string> = "cmd-11";
end class <cli-subcommand-handler-11>;

define generic execute-subcommand-11 (h :: <cli-subcommand-handler-11>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-11 (h :: <cli-subcommand-handler-11>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-11;


define class <cli-subcommand-handler-12> (<object>)
  slot subcommand-name :: <string> = "cmd-12";
end class <cli-subcommand-handler-12>;

define generic execute-subcommand-12 (h :: <cli-subcommand-handler-12>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-12 (h :: <cli-subcommand-handler-12>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-12;


define class <cli-subcommand-handler-13> (<object>)
  slot subcommand-name :: <string> = "cmd-13";
end class <cli-subcommand-handler-13>;

define generic execute-subcommand-13 (h :: <cli-subcommand-handler-13>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-13 (h :: <cli-subcommand-handler-13>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-13;


define class <cli-subcommand-handler-14> (<object>)
  slot subcommand-name :: <string> = "cmd-14";
end class <cli-subcommand-handler-14>;

define generic execute-subcommand-14 (h :: <cli-subcommand-handler-14>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-14 (h :: <cli-subcommand-handler-14>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-14;


define class <cli-subcommand-handler-15> (<object>)
  slot subcommand-name :: <string> = "cmd-15";
end class <cli-subcommand-handler-15>;

define generic execute-subcommand-15 (h :: <cli-subcommand-handler-15>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-15 (h :: <cli-subcommand-handler-15>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-15;


define class <cli-subcommand-handler-16> (<object>)
  slot subcommand-name :: <string> = "cmd-16";
end class <cli-subcommand-handler-16>;

define generic execute-subcommand-16 (h :: <cli-subcommand-handler-16>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-16 (h :: <cli-subcommand-handler-16>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-16;


define class <cli-subcommand-handler-17> (<object>)
  slot subcommand-name :: <string> = "cmd-17";
end class <cli-subcommand-handler-17>;

define generic execute-subcommand-17 (h :: <cli-subcommand-handler-17>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-17 (h :: <cli-subcommand-handler-17>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-17;


define class <cli-subcommand-handler-18> (<object>)
  slot subcommand-name :: <string> = "cmd-18";
end class <cli-subcommand-handler-18>;

define generic execute-subcommand-18 (h :: <cli-subcommand-handler-18>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-18 (h :: <cli-subcommand-handler-18>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-18;


define class <cli-subcommand-handler-19> (<object>)
  slot subcommand-name :: <string> = "cmd-19";
end class <cli-subcommand-handler-19>;

define generic execute-subcommand-19 (h :: <cli-subcommand-handler-19>, opts :: <cli-options>) => (rc :: <integer>);
define method execute-subcommand-19 (h :: <cli-subcommand-handler-19>, opts :: <cli-options>) => (rc :: <integer>)
  0;
end method execute-subcommand-19;
