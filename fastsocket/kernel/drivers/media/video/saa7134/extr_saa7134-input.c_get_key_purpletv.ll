; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_purpletv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_purpletv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_purpletv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_purpletv(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %10 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @i2c_master_recv(i32 %11, i8* %8, i32 1)
  %13 = icmp ne i32 1, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %34

29:                                               ; preds = %23
  %30 = load i8, i8* %8, align 1
  %31 = load i8*, i8** %6, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8, i8* %8, align 1
  %33 = load i8*, i8** %7, align 8
  store i8 %32, i8* %33, align 1
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %28, %22, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @i2cdprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
