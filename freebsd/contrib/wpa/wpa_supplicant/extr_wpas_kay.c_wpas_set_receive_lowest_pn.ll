; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_wpas_set_receive_lowest_pn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_wpas_set_receive_lowest_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_sa = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.receive_sa*)* @wpas_set_receive_lowest_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_set_receive_lowest_pn(i8* %0, %struct.receive_sa* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.receive_sa*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.receive_sa* %1, %struct.receive_sa** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.receive_sa*, %struct.receive_sa** %4, align 8
  %7 = call i32 @wpa_drv_set_receive_lowest_pn(i8* %5, %struct.receive_sa* %6)
  ret i32 %7
}

declare dso_local i32 @wpa_drv_set_receive_lowest_pn(i8*, %struct.receive_sa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
