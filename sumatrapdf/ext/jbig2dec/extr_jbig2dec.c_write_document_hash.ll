; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_write_document_hash.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_write_document_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Hash of decoded document: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @write_document_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_document_hash(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strncmp(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** @stderr, align 8
  store i32* %10, i32** %3, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @stdout, align 8
  store i32* %12, i32** %3, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fprintf(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @hash_print(%struct.TYPE_4__* %16, i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @hash_print(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
