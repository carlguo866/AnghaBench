; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_type.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ftp_type.command = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"TYPE I\0D\0A\00", align 1
@ftp_type.type_codes = internal constant [2 x i32] [i32 200, i32 0], align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ftp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i8*, i8** @ftp_type.command, align 8
  %6 = call i32 @ftp_send_command(i32* %4, i8* %5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ftp_type.type_codes, i64 0, i64 0), i32* null)
  %7 = icmp ne i32 %6, 200
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  %10 = call i32 @AVERROR(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @ftp_send_command(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
