; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_ev_timer_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_ev_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_timer_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %23 [
    i32 128, label %9
    i32 129, label %16
  ]

9:                                                ; preds = %3
  %10 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 100
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %3, %16, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
