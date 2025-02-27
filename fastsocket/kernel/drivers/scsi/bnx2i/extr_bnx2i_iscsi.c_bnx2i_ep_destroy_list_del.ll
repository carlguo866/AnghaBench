; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_destroy_list_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_destroy_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }
%struct.bnx2i_endpoint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*, %struct.bnx2i_endpoint*)* @bnx2i_ep_destroy_list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_ep_destroy_list_del(%struct.bnx2i_hba* %0, %struct.bnx2i_endpoint* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.bnx2i_endpoint*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.bnx2i_endpoint* %1, %struct.bnx2i_endpoint** %4, align 8
  %5 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %5, i32 0, i32 0
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %8, i32 0, i32 0
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %11, i32 0, i32 0
  %13 = call i32 @write_unlock_bh(i32* %12)
  ret i32 0
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
