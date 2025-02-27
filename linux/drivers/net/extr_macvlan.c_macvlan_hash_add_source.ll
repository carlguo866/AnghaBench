; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_hash_add_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_hash_add_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvlan_dev = type { i32, %struct.macvlan_port* }
%struct.macvlan_port = type { %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.macvlan_source_entry = type { i32, %struct.macvlan_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macvlan_dev*, i8*)* @macvlan_hash_add_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_hash_add_source(%struct.macvlan_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macvlan_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macvlan_port*, align 8
  %7 = alloca %struct.macvlan_source_entry*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  store %struct.macvlan_dev* %0, %struct.macvlan_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %10 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %9, i32 0, i32 1
  %11 = load %struct.macvlan_port*, %struct.macvlan_port** %10, align 8
  store %struct.macvlan_port* %11, %struct.macvlan_port** %6, align 8
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.macvlan_source_entry* @macvlan_hash_lookup_source(%struct.macvlan_dev* %12, i8* %13)
  store %struct.macvlan_source_entry* %14, %struct.macvlan_source_entry** %7, align 8
  %15 = load %struct.macvlan_source_entry*, %struct.macvlan_source_entry** %7, align 8
  %16 = icmp ne %struct.macvlan_source_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.macvlan_source_entry* @kmalloc(i32 24, i32 %19)
  store %struct.macvlan_source_entry* %20, %struct.macvlan_source_entry** %7, align 8
  %21 = load %struct.macvlan_source_entry*, %struct.macvlan_source_entry** %7, align 8
  %22 = icmp ne %struct.macvlan_source_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.macvlan_source_entry*, %struct.macvlan_source_entry** %7, align 8
  %28 = getelementptr inbounds %struct.macvlan_source_entry, %struct.macvlan_source_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @ether_addr_copy(i32 %29, i8* %30)
  %32 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %33 = load %struct.macvlan_source_entry*, %struct.macvlan_source_entry** %7, align 8
  %34 = getelementptr inbounds %struct.macvlan_source_entry, %struct.macvlan_source_entry* %33, i32 0, i32 1
  store %struct.macvlan_dev* %32, %struct.macvlan_dev** %34, align 8
  %35 = load %struct.macvlan_port*, %struct.macvlan_port** %6, align 8
  %36 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %35, i32 0, i32 0
  %37 = load %struct.hlist_head*, %struct.hlist_head** %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @macvlan_eth_hash(i8* %38)
  %40 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %37, i64 %39
  store %struct.hlist_head* %40, %struct.hlist_head** %8, align 8
  %41 = load %struct.macvlan_source_entry*, %struct.macvlan_source_entry** %7, align 8
  %42 = getelementptr inbounds %struct.macvlan_source_entry, %struct.macvlan_source_entry* %41, i32 0, i32 0
  %43 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %44 = call i32 @hlist_add_head_rcu(i32* %42, %struct.hlist_head* %43)
  %45 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %46 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %26, %23, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.macvlan_source_entry* @macvlan_hash_lookup_source(%struct.macvlan_dev*, i8*) #1

declare dso_local %struct.macvlan_source_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i64 @macvlan_eth_hash(i8*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
