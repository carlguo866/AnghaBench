; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_sdump_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_sdump_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"%s:%s:%d:%d:%jd:%s:%s:%s:%s:%jd:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i8*, i64)* @sdump_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdump_passwd(%struct.passwd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.passwd*, %struct.passwd** %4, align 8
  %10 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.passwd*, %struct.passwd** %4, align 8
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.passwd*, %struct.passwd** %4, align 8
  %16 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.passwd*, %struct.passwd** %4, align 8
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.passwd*, %struct.passwd** %4, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.passwd*, %struct.passwd** %4, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.passwd*, %struct.passwd** %4, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.passwd*, %struct.passwd** %4, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.passwd*, %struct.passwd** %4, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.passwd*, %struct.passwd** %4, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.passwd*, %struct.passwd** %4, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14, i32 %17, i32 %20, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
