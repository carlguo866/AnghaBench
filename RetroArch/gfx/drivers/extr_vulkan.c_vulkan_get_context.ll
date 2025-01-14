; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_get_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFX_CTX_VULKAN_API = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @vulkan_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vulkan_get_context(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load i32, i32* @GFX_CTX_VULKAN_API, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @video_context_driver_init_first(%struct.TYPE_8__* %11, i32 %15, i32 %16, i32 %17, i32 %18, i32 0, i8** %3)
  store i32* %19, i32** %8, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32*, i32** %8, align 8
  ret i32* %27
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32* @video_context_driver_init_first(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
