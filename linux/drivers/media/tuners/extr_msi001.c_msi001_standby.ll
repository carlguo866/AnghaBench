; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_standby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.msi001_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @msi001_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi001_standby(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.msi001_dev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %4)
  store %struct.msi001_dev* %5, %struct.msi001_dev** %3, align 8
  %6 = load %struct.msi001_dev*, %struct.msi001_dev** %3, align 8
  %7 = call i32 @msi001_wreg(%struct.msi001_dev* %6, i32 0)
  ret i32 %7
}

declare dso_local %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @msi001_wreg(%struct.msi001_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
