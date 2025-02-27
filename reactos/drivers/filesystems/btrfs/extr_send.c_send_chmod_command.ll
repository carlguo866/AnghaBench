; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_chmod_command.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_chmod_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@BTRFS_SEND_CMD_CHMOD = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32)* @send_chmod_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_chmod_command(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* @BTRFS_SEND_CMD_CHMOD, align 4
  %13 = call i32 @send_command(%struct.TYPE_6__* %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 4095
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @BTRFS_SEND_TLV_PATH, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = trunc i64 %23 to i32
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = call i32 (%struct.TYPE_6__*, i32, ...) @send_add_tlv(%struct.TYPE_6__* %16, i32 %17, i8* %18, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* @BTRFS_SEND_TLV_MODE, align 4
  %31 = call i32 (%struct.TYPE_6__*, i32, ...) @send_add_tlv(%struct.TYPE_6__* %29, i32 %30, i32* %6, i64 4)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @send_command_finish(%struct.TYPE_6__* %32, i32 %33)
  ret void
}

declare dso_local i32 @send_command(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @send_add_tlv(%struct.TYPE_6__*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @send_command_finish(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
