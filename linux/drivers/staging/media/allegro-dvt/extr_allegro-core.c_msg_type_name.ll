; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_msg_type_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_msg_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msg_type_name.buf = internal global [9 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CREATE_CHANNEL\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DESTROY_CHANNEL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ENCODE_FRAME\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PUT_STREAM_BUFFER\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"PUSH_BUFFER_INTERMEDIATE\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"PUSH_BUFFER_REFERENCE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"(0x%04x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @msg_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @msg_type_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 131, label %5
    i32 134, label %6
    i32 133, label %7
    i32 132, label %8
    i32 128, label %9
    i32 130, label %10
    i32 129, label %11
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %15

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %15

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %15

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %15

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %15

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %15

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @snprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @msg_type_name.buf, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %13)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @msg_type_name.buf, i64 0, i64 0), i8** %2, align 8
  br label %15

15:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
