; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_last_valueValueFunc.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_last_valueValueFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LastValueCtx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @last_valueValueFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_valueValueFunc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.LastValueCtx*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @sqlite3_aggregate_context(i32* %4, i32 8)
  %6 = inttoptr i64 %5 to %struct.LastValueCtx*
  store %struct.LastValueCtx* %6, %struct.LastValueCtx** %3, align 8
  %7 = load %struct.LastValueCtx*, %struct.LastValueCtx** %3, align 8
  %8 = icmp ne %struct.LastValueCtx* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.LastValueCtx*, %struct.LastValueCtx** %3, align 8
  %11 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.LastValueCtx*, %struct.LastValueCtx** %3, align 8
  %17 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @sqlite3_result_value(i32* %15, i64 %18)
  br label %20

20:                                               ; preds = %14, %9, %1
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
