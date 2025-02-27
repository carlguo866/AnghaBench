; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_diff.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_node = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, i32*)* @batadv_iv_ogm_neigh_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_neigh_diff(%struct.batadv_neigh_node* %0, %struct.batadv_hard_iface* %1, %struct.batadv_neigh_node* %2, %struct.batadv_hard_iface* %3, i32* %4) #0 {
  %6 = alloca %struct.batadv_neigh_node*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_neigh_node*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %12 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.batadv_neigh_node* %0, %struct.batadv_neigh_node** %6, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_neigh_node* %2, %struct.batadv_neigh_node** %8, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %18 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %16, %struct.batadv_hard_iface* %17)
  store %struct.batadv_neigh_ifinfo* %18, %struct.batadv_neigh_ifinfo** %11, align 8
  %19 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %21 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %19, %struct.batadv_hard_iface* %20)
  store %struct.batadv_neigh_ifinfo* %21, %struct.batadv_neigh_ifinfo** %12, align 8
  %22 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %23 = icmp ne %struct.batadv_neigh_ifinfo* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %12, align 8
  %26 = icmp ne %struct.batadv_neigh_ifinfo* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %5
  store i32 0, i32* %15, align 4
  br label %43

28:                                               ; preds = %24
  %29 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %30 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %12, align 8
  %34 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = sub nsw i32 %38, %40
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %27
  %44 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %45 = icmp ne %struct.batadv_neigh_ifinfo* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %48 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %12, align 8
  %51 = icmp ne %struct.batadv_neigh_ifinfo* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %12, align 8
  %54 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %15, align 4
  ret i32 %56
}

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
