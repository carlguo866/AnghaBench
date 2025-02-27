; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_start_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_start_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_exch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_seq* (%struct.fc_seq*)* @fc_seq_start_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_seq* @fc_seq_start_next(%struct.fc_seq* %0) #0 {
  %2 = alloca %struct.fc_seq*, align 8
  %3 = alloca %struct.fc_exch*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %2, align 8
  %4 = load %struct.fc_seq*, %struct.fc_seq** %2, align 8
  %5 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %4)
  store %struct.fc_exch* %5, %struct.fc_exch** %3, align 8
  %6 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %7 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.fc_seq*, %struct.fc_seq** %2, align 8
  %10 = call %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq* %9)
  store %struct.fc_seq* %10, %struct.fc_seq** %2, align 8
  %11 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %12 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock_bh(i32* %12)
  %14 = load %struct.fc_seq*, %struct.fc_seq** %2, align 8
  ret %struct.fc_seq* %14
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
