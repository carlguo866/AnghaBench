; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_Sel_BCS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_Sel_BCS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i64 }
%struct.IsdnCardState = type { %struct.BCState* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.BCState* (%struct.IsdnCardState*, i32)* @Sel_BCS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %7 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %6, i32 0, i32 0
  %8 = load %struct.BCState*, %struct.BCState** %7, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i64 0
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load %struct.BCState*, %struct.BCState** %15, align 8
  %17 = getelementptr inbounds %struct.BCState, %struct.BCState* %16, i64 0
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 0
  %25 = load %struct.BCState*, %struct.BCState** %24, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i64 0
  store %struct.BCState* %26, %struct.BCState** %3, align 8
  br label %50

27:                                               ; preds = %13, %2
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = load %struct.BCState*, %struct.BCState** %29, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i64 1
  %32 = getelementptr inbounds %struct.BCState, %struct.BCState* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 0
  %38 = load %struct.BCState*, %struct.BCState** %37, align 8
  %39 = getelementptr inbounds %struct.BCState, %struct.BCState* %38, i64 1
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 0
  %47 = load %struct.BCState*, %struct.BCState** %46, align 8
  %48 = getelementptr inbounds %struct.BCState, %struct.BCState* %47, i64 1
  store %struct.BCState* %48, %struct.BCState** %3, align 8
  br label %50

49:                                               ; preds = %35, %27
  store %struct.BCState* null, %struct.BCState** %3, align 8
  br label %50

50:                                               ; preds = %49, %44, %22
  %51 = load %struct.BCState*, %struct.BCState** %3, align 8
  ret %struct.BCState* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
