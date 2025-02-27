; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.bpf_map* }
%struct.bpf_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bpf_map*, %struct.file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bpf_map_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  store %struct.bpf_map* %8, %struct.bpf_map** %5, align 8
  %9 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.bpf_map*, %struct.file*)*, i32 (%struct.bpf_map*, %struct.file*)** %12, align 8
  %14 = icmp ne i32 (%struct.bpf_map*, %struct.file*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.bpf_map*, %struct.file*)*, i32 (%struct.bpf_map*, %struct.file*)** %19, align 8
  %21 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call i32 %20(%struct.bpf_map* %21, %struct.file* %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %26 = call i32 @bpf_map_put_with_uref(%struct.bpf_map* %25)
  ret i32 0
}

declare dso_local i32 @bpf_map_put_with_uref(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
