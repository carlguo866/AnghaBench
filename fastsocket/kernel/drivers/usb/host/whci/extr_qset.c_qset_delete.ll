; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qset_delete(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  %5 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %6 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %5, i32 0, i32 0
  %7 = call i32 @wait_for_completion(i32* %6)
  %8 = load %struct.whc*, %struct.whc** %3, align 8
  %9 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %10 = call i32 @qset_free(%struct.whc* %8, %struct.whc_qset* %9)
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @qset_free(%struct.whc*, %struct.whc_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
