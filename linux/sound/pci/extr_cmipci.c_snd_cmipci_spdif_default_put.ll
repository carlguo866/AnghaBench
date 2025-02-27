; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.cmipci = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.cmipci* %10, %struct.cmipci** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %12 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 8
  %30 = shl i32 %27, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %39 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %45 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %47 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
