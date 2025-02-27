; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_is_desired_ep11_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_is_desired_ep11_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep11_target_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i16, %struct.ep11_target_dev*)* @is_desired_ep11_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_desired_ep11_queue(i32 %0, i16 zeroext %1, %struct.ep11_target_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.ep11_target_dev*, align 8
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store %struct.ep11_target_dev* %2, %struct.ep11_target_dev** %7, align 8
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i16, i16* %6, align 2
  %10 = add i16 %9, -1
  store i16 %10, i16* %6, align 2
  %11 = zext i16 %9 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.ep11_target_dev*, %struct.ep11_target_dev** %7, align 8
  %15 = getelementptr inbounds %struct.ep11_target_dev, %struct.ep11_target_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ep11_target_dev*, %struct.ep11_target_dev** %7, align 8
  %18 = getelementptr inbounds %struct.ep11_target_dev, %struct.ep11_target_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AP_MKQID(i32 %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.ep11_target_dev*, %struct.ep11_target_dev** %7, align 8
  %26 = getelementptr inbounds %struct.ep11_target_dev, %struct.ep11_target_dev* %25, i32 1
  store %struct.ep11_target_dev* %26, %struct.ep11_target_dev** %7, align 8
  br label %8

27:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @AP_MKQID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
