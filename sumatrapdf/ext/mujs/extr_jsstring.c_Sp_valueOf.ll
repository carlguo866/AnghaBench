; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_valueOf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_valueOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@JS_CSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"not a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_valueOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_valueOf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_7__* @js_toobject(i32* %4, i32 0)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JS_CSTRING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_typeerror(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @js_pushliteral(i32* %15, i32 %20)
  ret void
}

declare dso_local %struct.TYPE_7__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_pushliteral(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
