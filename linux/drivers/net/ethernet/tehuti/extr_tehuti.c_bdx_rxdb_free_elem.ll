; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_free_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_free_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxdb = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxdb*, i32)* @bdx_rxdb_free_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_rxdb_free_elem(%struct.rxdb* %0, i32 %1) #0 {
  %3 = alloca %struct.rxdb*, align 8
  %4 = alloca i32, align 4
  store %struct.rxdb* %0, %struct.rxdb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %7 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %5, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BDX_ASSERT(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %19 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rxdb*, %struct.rxdb** %3, align 8
  %22 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %17, i32* %26, align 4
  ret void
}

declare dso_local i32 @BDX_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
