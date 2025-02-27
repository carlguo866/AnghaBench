; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_10__*, %struct.i810fb_par* }
%struct.TYPE_10__ = type { i32 (%struct.fb_info*)* }
%struct.i810fb_par = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @i810fb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810fb_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.i810fb_par*, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.i810fb_par*, %struct.i810fb_par** %12, align 8
  store %struct.i810fb_par* %13, %struct.i810fb_par** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  %17 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = bitcast %struct.TYPE_12__* %24 to i8*
  %26 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = call i32 (...) @acquire_console_sem()
  %29 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %30 = call i32 @fb_set_suspend(%struct.fb_info* %29, i32 1)
  %31 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %34, align 8
  %36 = icmp ne i32 (%struct.fb_info*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %41, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %44 = call i32 %42(%struct.fb_info* %43)
  br label %45

45:                                               ; preds = %37, %27
  %46 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %48 = call i32 @i810fb_blank(i32 %46, %struct.fb_info* %47)
  %49 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  %50 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @agp_unbind_memory(i32 %52)
  %54 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  %55 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @agp_unbind_memory(i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = call i32 @pci_save_state(%struct.pci_dev* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = call i32 @pci_disable_device(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pci_choose_state(%struct.pci_dev* %64, i32 %66)
  %68 = call i32 @pci_set_power_state(%struct.pci_dev* %63, i32 %67)
  %69 = call i32 (...) @release_console_sem()
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %45, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

declare dso_local i32 @i810fb_blank(i32, %struct.fb_info*) #1

declare dso_local i32 @agp_unbind_memory(i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
