; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_copy_macs.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_copy_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(%s) out of mem\0A\00", align 1
@MPS_AND_MPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mpoa_client*, i32*, i32*, i32, i32)* @copy_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_macs(%struct.mpoa_client* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mpoa_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpoa_client* %0, %struct.mpoa_client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  br label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 1, %17 ]
  store i32 %19, i32* %12, align 4
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %21 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %32 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc_array(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %45 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %50 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32* null, i32** %6, align 8
  br label %93

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %58 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @ether_addr_copy(i32* %59, i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 20
  store i32* %63, i32** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MPS_AND_MPC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 20
  store i32* %69, i32** %9, align 8
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %75 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i32 @memcpy(i32* %76, i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32*, i32** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %91 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %9, align 8
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %82, %48
  %94 = load i32*, i32** %6, align 8
  ret i32* %94
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
