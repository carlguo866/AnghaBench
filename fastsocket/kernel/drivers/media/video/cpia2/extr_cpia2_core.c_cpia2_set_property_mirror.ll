; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_property_mirror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_property_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }

@CPIA2_CMD_GET_USER_EFFECTS = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@CPIA2_VP_USER_EFFECTS_MIRROR = common dso_local global i8 0, align 1
@CPIA2_CMD_SET_USER_EFFECTS = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpia2_set_property_mirror(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %7 = load i32, i32* @CPIA2_CMD_GET_USER_EFFECTS, align 4
  %8 = load i32, i32* @TRANSFER_READ, align 4
  %9 = call i32 @cpia2_do_command(%struct.camera_data* %6, i32 %7, i32 %8, i8 zeroext 0)
  %10 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %11 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8, i8* @CPIA2_VP_USER_EFFECTS_MIRROR, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  br label %32

24:                                               ; preds = %2
  %25 = load i8, i8* @CPIA2_VP_USER_EFFECTS_MIRROR, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %5, align 1
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %34 = load i32, i32* @CPIA2_CMD_SET_USER_EFFECTS, align 4
  %35 = load i32, i32* @TRANSFER_WRITE, align 4
  %36 = load i8, i8* %5, align 1
  %37 = call i32 @cpia2_do_command(%struct.camera_data* %33, i32 %34, i32 %35, i8 zeroext %36)
  ret void
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
