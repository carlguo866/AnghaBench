; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @nmchan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmchan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %9, %struct.sc_chinfo** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %14 = call i64 @nm_setch(%struct.sc_chinfo* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %17 ]
  ret i32 %22
}

declare dso_local i64 @nm_setch(%struct.sc_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
