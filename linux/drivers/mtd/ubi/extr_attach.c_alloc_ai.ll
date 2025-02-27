; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_alloc_ai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_alloc_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ubi_aeb_slab_cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_attach_info* ()* @alloc_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_attach_info* @alloc_ai() #0 {
  %1 = alloca %struct.ubi_attach_info*, align 8
  %2 = alloca %struct.ubi_attach_info*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ubi_attach_info* @kzalloc(i32 28, i32 %3)
  store %struct.ubi_attach_info* %4, %struct.ubi_attach_info** %2, align 8
  %5 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %6 = icmp ne %struct.ubi_attach_info* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  store %struct.ubi_attach_info* %8, %struct.ubi_attach_info** %1, align 8
  br label %40

9:                                                ; preds = %0
  %10 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %11 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %14 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %13, i32 0, i32 5
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %17 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %16, i32 0, i32 4
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %19, i32 0, i32 3
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %23 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %22, i32 0, i32 2
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* @RB_ROOT, align 4
  %26 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %27 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %29 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %32 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %9
  %36 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  %37 = call i32 @kfree(%struct.ubi_attach_info* %36)
  store %struct.ubi_attach_info* null, %struct.ubi_attach_info** %2, align 8
  br label %38

38:                                               ; preds = %35, %9
  %39 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %2, align 8
  store %struct.ubi_attach_info* %39, %struct.ubi_attach_info** %1, align 8
  br label %40

40:                                               ; preds = %38, %7
  %41 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %1, align 8
  ret %struct.ubi_attach_info* %41
}

declare dso_local %struct.ubi_attach_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ubi_attach_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
