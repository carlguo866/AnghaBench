; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_alloc_intermediate_rxbuffer_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_alloc_intermediate_rxbuffer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_alloc_intermediate_rxbuffer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_alloc_intermediate_rxbuffer_memory(%struct.mgsl_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgsl_struct*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %3, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %5 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call i32* @kmalloc(i32 %6, i32 %9)
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %12 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %14 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %22 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %27 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %29 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %20
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %34 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %38 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
