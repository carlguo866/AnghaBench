; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_activation.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_activation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"linear\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_activation(%struct.TYPE_7__* noalias sret %0, i32* %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @option_find_str(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @get_activation(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  call void @make_activation_layer(%struct.TYPE_7__* sret %0, i32 %12, i32 %14, i32 %15)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local void @make_activation_layer(%struct.TYPE_7__* sret, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
