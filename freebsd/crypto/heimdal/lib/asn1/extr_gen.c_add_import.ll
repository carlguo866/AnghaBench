; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_add_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_add_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.import = type { i8*, %struct.import* }

@imports = common dso_local global %struct.import* null, align 8
@headerfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"#include <%s_asn1.h>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_import(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.import*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.import* @emalloc(i32 16)
  store %struct.import* %4, %struct.import** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load %struct.import*, %struct.import** %3, align 8
  %7 = getelementptr inbounds %struct.import, %struct.import* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct.import*, %struct.import** @imports, align 8
  %9 = load %struct.import*, %struct.import** %3, align 8
  %10 = getelementptr inbounds %struct.import, %struct.import* %9, i32 0, i32 1
  store %struct.import* %8, %struct.import** %10, align 8
  %11 = load %struct.import*, %struct.import** %3, align 8
  store %struct.import* %11, %struct.import** @imports, align 8
  %12 = load i32, i32* @headerfile, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13)
  ret void
}

declare dso_local %struct.import* @emalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
