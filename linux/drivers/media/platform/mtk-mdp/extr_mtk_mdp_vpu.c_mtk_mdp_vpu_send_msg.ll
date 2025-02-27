; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_vpu = type { i32 }
%struct.mtk_mdp_ctx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"[%d]:vpu pdev is NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vpu_ipi_send fail status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.mtk_mdp_vpu*, i32)* @mtk_mdp_vpu_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_vpu_send_msg(i8* %0, i32 %1, %struct.mtk_mdp_vpu* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_mdp_vpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_mdp_ctx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mtk_mdp_vpu* %2, %struct.mtk_mdp_vpu** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %8, align 8
  %13 = call %struct.mtk_mdp_ctx* @vpu_to_ctx(%struct.mtk_mdp_vpu* %12)
  store %struct.mtk_mdp_ctx* %13, %struct.mtk_mdp_ctx** %10, align 8
  %14 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mtk_mdp_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @vpu_ipi_send(i32 %33, i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40, %25
  %50 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.mtk_mdp_ctx* @vpu_to_ctx(%struct.mtk_mdp_vpu*) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vpu_ipi_send(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
