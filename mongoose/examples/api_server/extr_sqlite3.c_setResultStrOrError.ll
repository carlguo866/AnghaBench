; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_setResultStrOrError.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_setResultStrOrError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SQLITE_TOOBIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32, i32, void (i8*)*)* @setResultStrOrError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setResultStrOrError(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (i8*)* %4, void (i8*)** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load void (i8*)*, void (i8*)** %10, align 8
  %17 = call i64 @sqlite3VdbeMemSetStr(i32* %12, i8* %13, i32 %14, i32 %15, void (i8*)* %16)
  %18 = load i64, i64* @SQLITE_TOOBIG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = call i32 @sqlite3_result_error_toobig(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %20, %5
  ret void
}

declare dso_local i64 @sqlite3VdbeMemSetStr(i32*, i8*, i32, i32, void (i8*)*) #1

declare dso_local i32 @sqlite3_result_error_toobig(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
