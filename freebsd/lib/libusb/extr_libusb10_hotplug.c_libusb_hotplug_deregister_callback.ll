; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_hotplug.c_libusb_hotplug_deregister_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_hotplug.c_libusb_hotplug_deregister_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb_hotplug_deregister_callback(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call %struct.TYPE_7__* @GET_CONTEXT(%struct.TYPE_7__* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %25

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @HOTPLUG_LOCK(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @entry, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %17, i32* %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @HOTPLUG_UNLOCK(%struct.TYPE_7__* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_7__* @GET_CONTEXT(%struct.TYPE_7__*) #1

declare dso_local i32 @HOTPLUG_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #1

declare dso_local i32 @HOTPLUG_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
