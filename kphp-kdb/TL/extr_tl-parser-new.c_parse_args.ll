; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@type_args = common dso_local global i32 0, align 4
@parse_args1 = common dso_local global i32 0, align 4
@parse_args2 = common dso_local global i32 0, align 4
@parse_args3 = common dso_local global i32 0, align 4
@parse_args4 = common dso_local global i32 0, align 4
@PARSE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_args() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_args, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i32, i32* @parse_args1, align 4
  %5 = call i32 @PARSE_TRY_OPT(i32 %4)
  %6 = load i32, i32* @parse_args2, align 4
  %7 = call i32 @PARSE_TRY_OPT(i32 %6)
  %8 = load i32, i32* @parse_args3, align 4
  %9 = call i32 @PARSE_TRY_OPT(i32 %8)
  %10 = load i32, i32* @parse_args4, align 4
  %11 = call i32 @PARSE_TRY_OPT(i32 %10)
  %12 = load i32, i32* @PARSE_FAIL, align 4
  %13 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %13
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY_OPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
