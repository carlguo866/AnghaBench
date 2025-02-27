; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_snd_ff_transaction_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_snd_ff_transaction_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ff_transaction_unregister(%struct.snd_ff* %0) #0 {
  %2 = alloca %struct.snd_ff*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %2, align 8
  %4 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = call i32 @cpu_to_le32(i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %19 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %20 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_fw_transaction(i32 %17, i32 %18, i32 %23, i32* %3, i32 4, i32 0)
  %25 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %26 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %25, i32 0, i32 0
  %27 = call i32 @fw_core_remove_address_handler(%struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
