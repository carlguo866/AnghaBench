; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x.h_adv748x_get_remote_sd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x.h_adv748x_get_remote_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_pad = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_subdev* (%struct.media_pad*)* @adv748x_get_remote_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_subdev* @adv748x_get_remote_sd(%struct.media_pad* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.media_pad*, align 8
  store %struct.media_pad* %0, %struct.media_pad** %3, align 8
  %4 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %5 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %4)
  store %struct.media_pad* %5, %struct.media_pad** %3, align 8
  %6 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %7 = icmp ne %struct.media_pad* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %11 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %12)
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  ret %struct.v4l2_subdev* %15
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
