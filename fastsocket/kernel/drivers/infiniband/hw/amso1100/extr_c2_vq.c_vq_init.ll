; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32*, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"c2-vq:dev%c\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vq_init(%struct.c2_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c2_dev*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  %4 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %5 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %8 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 48, %9
  %11 = trunc i64 %10 to i8
  %12 = call i32 @sprintf(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 signext %11)
  %13 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %14 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %17 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %21 = call i32* @kmem_cache_create(i32 %15, i32 %19, i32 0, i32 %20, i32* null)
  %22 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %23 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %25 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @sprintf(i32, i8*, i8 signext) #1

declare dso_local i32* @kmem_cache_create(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
