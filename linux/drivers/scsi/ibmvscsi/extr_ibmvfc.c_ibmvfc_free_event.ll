; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_free_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_free_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i32, i32, %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i32, %struct.ibmvfc_event_pool }
%struct.ibmvfc_event_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_free_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_free_event(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.ibmvfc_event_pool*, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %5 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %5, i32 0, i32 2
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  store %struct.ibmvfc_host* %7, %struct.ibmvfc_host** %3, align 8
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %8, i32 0, i32 1
  store %struct.ibmvfc_event_pool* %9, %struct.ibmvfc_event_pool** %4, align 8
  %10 = load %struct.ibmvfc_event_pool*, %struct.ibmvfc_event_pool** %4, align 8
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %12 = call i32 @ibmvfc_valid_event(%struct.ibmvfc_event_pool* %10, %struct.ibmvfc_event* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %17, i32 0, i32 1
  %19 = call i32 @atomic_inc_return(i32* %18)
  %20 = icmp ne i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %23, i32 0, i32 0
  %25 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ibmvfc_valid_event(%struct.ibmvfc_event_pool*, %struct.ibmvfc_event*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
