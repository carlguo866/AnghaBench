; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_macsec_drv_hapd_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_macsec_drv_hapd_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_drv_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @macsec_drv_hapd_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_drv_hapd_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.macsec_drv_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.macsec_drv_data*
  store %struct.macsec_drv_data* %5, %struct.macsec_drv_data** %3, align 8
  %6 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %3, align 8
  %13 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @eloop_unregister_read_sock(i64 %15)
  %17 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %3, align 8
  %18 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @close(i64 %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %3, align 8
  %24 = call i32 @os_free(%struct.macsec_drv_data* %23)
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @os_free(%struct.macsec_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
