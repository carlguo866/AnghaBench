; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_drec_source_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_drec_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ymfpci = type { i32 }

@YDSXGR_GLOBALCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ymfpci_drec_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_drec_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ymfpci* %9, %struct.snd_ymfpci** %5, align 8
  %10 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %14 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %15 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, -257
  store i32 %26, i32* %6, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -769
  %30 = or i32 %29, 256
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i32
  %40 = shl i32 %39, 9
  %41 = or i32 %30, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %27, %24
  %43 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %44 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %43, i32 %44, i32 %45)
  %47 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
