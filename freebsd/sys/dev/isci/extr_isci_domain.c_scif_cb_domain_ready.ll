; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_DOMAIN = type { i32 }
%struct.ISCI_CONTROLLER = type { %struct.ISCI_REMOTE_DEVICE** }
%struct.ISCI_REMOTE_DEVICE = type { %struct.ISCI_DOMAIN* }

@SCI_MAX_REMOTE_DEVICES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_domain_ready(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ISCI_DOMAIN*, align 8
  %7 = alloca %struct.ISCI_CONTROLLER*, align 8
  %8 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @sci_object_get_association(i32 %9)
  %11 = bitcast i8* %10 to %struct.ISCI_DOMAIN*
  store %struct.ISCI_DOMAIN* %11, %struct.ISCI_DOMAIN** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @sci_object_get_association(i32 %12)
  %14 = bitcast i8* %13 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %14, %struct.ISCI_CONTROLLER** %7, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SCI_MAX_REMOTE_DEVICES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %7, align 8
  %21 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %20, i32 0, i32 0
  %22 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %22, i64 %23
  %25 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %24, align 8
  store %struct.ISCI_REMOTE_DEVICE* %25, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %26 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %27 = icmp ne %struct.ISCI_REMOTE_DEVICE* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %30 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %29, i32 0, i32 0
  %31 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %30, align 8
  %32 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %6, align 8
  %33 = icmp eq %struct.ISCI_DOMAIN* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %8, align 8
  %36 = call i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE* %35)
  br label %37

37:                                               ; preds = %34, %28, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local i8* @sci_object_get_association(i32) #1

declare dso_local i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
