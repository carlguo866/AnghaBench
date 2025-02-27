; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_dest_set_eraseall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_dest_set_eraseall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest_set = type { i32, %struct.ip_vs_dest_list* }
%struct.ip_vs_dest_list = type { %struct.TYPE_2__*, %struct.ip_vs_dest_list* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest_set*)* @ip_vs_dest_set_eraseall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_dest_set_eraseall(%struct.ip_vs_dest_set* %0) #0 {
  %2 = alloca %struct.ip_vs_dest_set*, align 8
  %3 = alloca %struct.ip_vs_dest_list*, align 8
  %4 = alloca %struct.ip_vs_dest_list**, align 8
  store %struct.ip_vs_dest_set* %0, %struct.ip_vs_dest_set** %2, align 8
  %5 = load %struct.ip_vs_dest_set*, %struct.ip_vs_dest_set** %2, align 8
  %6 = getelementptr inbounds %struct.ip_vs_dest_set, %struct.ip_vs_dest_set* %5, i32 0, i32 0
  %7 = call i32 @write_lock(i32* %6)
  %8 = load %struct.ip_vs_dest_set*, %struct.ip_vs_dest_set** %2, align 8
  %9 = getelementptr inbounds %struct.ip_vs_dest_set, %struct.ip_vs_dest_set* %8, i32 0, i32 1
  store %struct.ip_vs_dest_list** %9, %struct.ip_vs_dest_list*** %4, align 8
  %10 = load %struct.ip_vs_dest_list**, %struct.ip_vs_dest_list*** %4, align 8
  %11 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %10, align 8
  store %struct.ip_vs_dest_list* %11, %struct.ip_vs_dest_list** %3, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %3, align 8
  %14 = icmp ne %struct.ip_vs_dest_list* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest_list, %struct.ip_vs_dest_list* %16, i32 0, i32 1
  %18 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %17, align 8
  %19 = load %struct.ip_vs_dest_list**, %struct.ip_vs_dest_list*** %4, align 8
  store %struct.ip_vs_dest_list* %18, %struct.ip_vs_dest_list** %19, align 8
  %20 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_dest_list, %struct.ip_vs_dest_list* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_dec(i32* %23)
  %25 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %3, align 8
  %26 = call i32 @kfree(%struct.ip_vs_dest_list* %25)
  br label %27

27:                                               ; preds = %15
  %28 = load %struct.ip_vs_dest_list**, %struct.ip_vs_dest_list*** %4, align 8
  %29 = load %struct.ip_vs_dest_list*, %struct.ip_vs_dest_list** %28, align 8
  store %struct.ip_vs_dest_list* %29, %struct.ip_vs_dest_list** %3, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.ip_vs_dest_set*, %struct.ip_vs_dest_set** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_dest_set, %struct.ip_vs_dest_set* %31, i32 0, i32 0
  %33 = call i32 @write_unlock(i32* %32)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ip_vs_dest_list*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
