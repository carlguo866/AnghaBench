; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_get_device_class.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_get_device_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utl_get_device_class(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = call i8** (...) @BTM_ReadDeviceClass()
  store i8** %7, i8*** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = call i32 @BTM_COD_SERVICE_CLASS(i32 %8, i8** %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = call i32 @BTM_COD_MINOR_CLASS(i8* %11, i8** %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = call i32 @BTM_COD_MAJOR_CLASS(i8* %14, i8** %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @TRUE, align 4
  ret i32 %26
}

declare dso_local i8** @BTM_ReadDeviceClass(...) #1

declare dso_local i32 @BTM_COD_SERVICE_CLASS(i32, i8**) #1

declare dso_local i32 @BTM_COD_MINOR_CLASS(i8*, i8**) #1

declare dso_local i32 @BTM_COD_MAJOR_CLASS(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
