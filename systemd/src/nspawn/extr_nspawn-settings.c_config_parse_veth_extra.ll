; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_veth_extra.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_veth_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Invalid extra virtual Ethernet link specification %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_veth_extra(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %22, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %19, align 8
  %35 = call i32 @veth_extra_parse(i32* %33, i8* %34)
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %23, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %10
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i8*, i8** %19, align 8
  %45 = call i32 @log_syntax(i8* %39, i32 %40, i8* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 0, i32* %11, align 4
  br label %47

46:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @veth_extra_parse(i32*, i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
