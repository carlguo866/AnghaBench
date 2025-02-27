; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_free_internal_volumes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_free_internal_volumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32* }

@UBI_INT_VOL_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_free_internal_volumes(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %4 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %5 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UBI_INT_VOL_COUNT, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %7
  %16 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ubi_eba_replace_table(i32 %22, i32* null)
  %24 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ubi_fastmap_destroy_checkmap(i32 %30)
  %32 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %7

43:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ubi_eba_replace_table(i32, i32*) #1

declare dso_local i32 @ubi_fastmap_destroy_checkmap(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
