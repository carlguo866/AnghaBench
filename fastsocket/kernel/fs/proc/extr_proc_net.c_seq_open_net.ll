; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_seq_open_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_seq_open_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.seq_operations = type { i32 }
%struct.net = type { i32 }
%struct.seq_net_private = type { %struct.net* }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_open_net(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.seq_operations*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.seq_net_private*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.net* @get_proc_net(%struct.inode* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = icmp eq %struct.net* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = load %struct.seq_operations*, %struct.seq_operations** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.seq_net_private* @__seq_open_private(%struct.file* %25, %struct.seq_operations* %26, i32 %27)
  store %struct.seq_net_private* %28, %struct.seq_net_private** %11, align 8
  %29 = load %struct.seq_net_private*, %struct.seq_net_private** %11, align 8
  %30 = icmp eq %struct.seq_net_private* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.net*, %struct.net** %10, align 8
  %33 = call i32 @put_net(%struct.net* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %31, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.net* @get_proc_net(%struct.inode*) #1

declare dso_local %struct.seq_net_private* @__seq_open_private(%struct.file*, %struct.seq_operations*, i32) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
