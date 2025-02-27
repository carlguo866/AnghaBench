; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digest_probe_options = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"realm missing\00", align 1
@context = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"digest_probe\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"flags: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digest_probe(%struct.digest_probe_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.digest_probe_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.digest_probe_options* %0, %struct.digest_probe_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.digest_probe_options*, %struct.digest_probe_options** %4, align 8
  %11 = getelementptr inbounds %struct.digest_probe_options, %struct.digest_probe_options* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* @context, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @id, align 4
  %21 = call i64 @krb5_digest_probe(i32 %18, i32* %19, i32 %20, i32* %9)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @context, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_digest_probe(i32, i32*, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
