; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_min_length_passwd_quality.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_min_length_passwd_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"password_quality\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"min_length\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Password too short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*, i8*, i8*, i64)* @min_length_passwd_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_length_passwd_quality(i32 %0, i32 %1, %struct.TYPE_3__* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @krb5_config_get_int_default(i32 %15, i32* null, i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %16, i64* %14, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @strlcpy(i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  store i32 1, i32* %7, align 4
  br label %27

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i64 @krb5_config_get_int_default(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
