; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_String.c_String_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_String.c_String_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@String_Examples.examples = internal global [3 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([378 x i8], [378 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [141 x i8] c"var s0 = $(String, \22Hello\22);\0Avar s1 = new(String, $S(\22Hello\22));\0Aappend(s1, $S(\22 There\22));\0Ashow(s0); /* Hello */\0Ashow(s1); /* Hello There */\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Manipulation\00", align 1
@.str.3 = private unnamed_addr constant [378 x i8] c"var s0 = new(String, $S(\22Balloons\22));\0A\0Ashow($I(len(s0))); /* 8 */\0Ashow($I(mem(s0, $S(\22Ball\22))));     /* 1 */\0Ashow($I(mem(s0, $S(\22oon\22))));      /* 1 */\0Ashow($I(mem(s0, $S(\22Balloons\22)))); /* 1 */\0Ashow($I(mem(s0, $S(\22l\22))));        /* 1 */\0A\0Arem(s0, $S(\22oons\22));\0A\0Ashow($I(eq(s0, $S(\22Ball\22)))); /* 1 */\0A\0Aresize(s0, 0);\0A\0Ashow($I(len(s0))); /* 0 */\0Ashow($I(eq(s0, $S(\22\22)))); /* 1 */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @String_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @String_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([3 x %struct.Example], [3 x %struct.Example]* @String_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
