; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_print_error.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"mDNS %s error: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mDNS %s error: unknown: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = call i64 @mdns_strerror(i32 %8, i8* %9, i32 128)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %16 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  br label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i64 @mdns_strerror(i32, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
