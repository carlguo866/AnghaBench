; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_scrolldelta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_scrolldelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.sisusb_usb_data = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @sisusbcon_scrolldelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_scrolldelta(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %8)
  store %struct.sisusb_usb_data* %9, %struct.sisusb_usb_data** %5, align 8
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %11 = icmp ne %struct.sisusb_usb_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %16 = call i64 @sisusb_is_inactive(%struct.vc_data* %14, %struct.sisusb_usb_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %20 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %26 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %33 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vc_scrolldelta_helper(%struct.vc_data* %23, i32 %24, i32 %27, i8* %31, i32 %34)
  %36 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = call i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data* %36, %struct.vc_data* %37)
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %40 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %22, %18, %12
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vc_scrolldelta_helper(%struct.vc_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data*, %struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
