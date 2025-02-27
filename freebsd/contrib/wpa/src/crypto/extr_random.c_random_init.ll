; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_entropy_file = common dso_local global i32* null, align 8
@random_fd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"random: Cannot open /dev/random: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"random: Trying to read entropy from /dev/random\00", align 1
@random_read_fd = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@GRND_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** @random_entropy_file, align 8
  %4 = call i32 @os_free(i32* %3)
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @os_strdup(i8* %8)
  store i32* %9, i32** @random_entropy_file, align 8
  br label %11

10:                                               ; preds = %1
  store i32* null, i32** @random_entropy_file, align 8
  br label %11

11:                                               ; preds = %10, %7
  %12 = call i32 (...) @random_read_entropy()
  %13 = load i64, i64* @random_fd, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %35

16:                                               ; preds = %11
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_NONBLOCK, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i64 %20, i64* @random_fd, align 8
  %21 = load i64, i64* @random_fd, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @strerror(i64 %25)
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %35

28:                                               ; preds = %16
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @random_fd, align 8
  %32 = load i32, i32* @random_read_fd, align 4
  %33 = call i32 @eloop_register_read_sock(i64 %31, i32 %32, i32* null, i32* null)
  %34 = call i32 (...) @random_write_entropy()
  br label %35

35:                                               ; preds = %28, %23, %15
  ret void
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32 @random_read_entropy(...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @eloop_register_read_sock(i64, i32, i32*, i32*) #1

declare dso_local i32 @random_write_entropy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
