; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_v210enc.c_checkasm_check_v210enc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_v210enc.c_checkasm_check_v210enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"v210_planar_pack_8\00", align 1
@uint8_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"v210_planar_pack_10\00", align 1
@uint16_t = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"planar_pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_v210enc() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 @ff_v210enc_init(%struct.TYPE_3__* %1)
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @check_func(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @uint8_t, align 4
  %9 = call i32 @check_pack_line(i32 %8, i32 -1)
  br label %10

10:                                               ; preds = %7, %0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @check_func(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @uint16_t, align 4
  %17 = call i32 @check_pack_line(i32 %16, i32 67044351)
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 @report(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_v210enc_init(%struct.TYPE_3__*) #1

declare dso_local i64 @check_func(i32, i8*) #1

declare dso_local i32 @check_pack_line(i32, i32) #1

declare dso_local i32 @report(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
