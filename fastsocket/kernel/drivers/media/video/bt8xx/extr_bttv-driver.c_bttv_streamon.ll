; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @bttv_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bttv_fh*
  store %struct.bttv_fh* %12, %struct.bttv_fh** %8, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 0
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %9, align 8
  %16 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %17 = call i32 @bttv_resource(%struct.bttv_fh* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.bttv*, %struct.bttv** %9, align 8
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @check_alloc_btres_lock(%struct.bttv* %18, %struct.bttv_fh* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %28 = call i32 @bttv_queue(%struct.bttv_fh* %27)
  %29 = call i32 @videobuf_streamon(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @bttv_resource(%struct.bttv_fh*) #1

declare dso_local i32 @check_alloc_btres_lock(%struct.bttv*, %struct.bttv_fh*, i32) #1

declare dso_local i32 @videobuf_streamon(i32) #1

declare dso_local i32 @bttv_queue(%struct.bttv_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
