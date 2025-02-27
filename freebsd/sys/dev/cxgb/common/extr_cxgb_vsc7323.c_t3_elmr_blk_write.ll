; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_elmr_blk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_elmr_blk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_ops = type { i32 (i32*, i32, i32, i32, i32)* }
%struct.TYPE_2__ = type { %struct.mdio_ops* }

@ELMR_MDIO_ADDR = common dso_local global i32 0, align 4
@ELMR_ADDR = common dso_local global i32 0, align 4
@ELMR_DATA_LO = common dso_local global i32 0, align 4
@ELMR_DATA_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_elmr_blk_write(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdio_ops*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.TYPE_2__* @adapter_info(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mdio_ops*, %struct.mdio_ops** %13, align 8
  store %struct.mdio_ops* %14, %struct.mdio_ops** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ELMR_LOCK(i32* %15)
  %17 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %18 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %17, i32 0, i32 0
  %19 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %22 = load i32, i32* @ELMR_ADDR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %19(i32* %20, i32 %21, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %58, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %63

33:                                               ; preds = %31
  %34 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %35 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %39 = load i32, i32* @ELMR_DATA_LO, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 %36(i32* %37, i32 %38, i32 0, i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %33
  %47 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %48 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %47, i32 0, i32 0
  %49 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @ELMR_MDIO_ADDR, align 4
  %52 = load i32, i32* @ELMR_DATA_HI, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = call i32 %49(i32* %50, i32 %51, i32 0, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %46, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  br label %25

63:                                               ; preds = %31
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ELMR_UNLOCK(i32* %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @adapter_info(i32*) #1

declare dso_local i32 @ELMR_LOCK(i32*) #1

declare dso_local i32 @ELMR_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
