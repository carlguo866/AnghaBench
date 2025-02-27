; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skiminfo = type { i32, i32 }
%struct.printer = type { i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"df:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@_PATH_PRINTCAP = common dso_local global i32 0, align 4
@problems = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WARNING: found %d entries when skimming %s,\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"WARNING:  but only found %d queues to process!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.skiminfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.printer, align 4
  %15 = alloca %struct.printer*, align 8
  %16 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %7, align 8
  store %struct.printer* %14, %struct.printer** %15, align 8
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %33 [
    i32 100, label %24
    i32 102, label %25
    i32 118, label %30
  ]

24:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %35

25:                                               ; preds = %22
  %26 = load i32, i32* @optarg, align 4
  %27 = call i8* @strdup(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @setprintcap(i8* %28)
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %35

33:                                               ; preds = %22
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30, %25, %24
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* @optind, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8*, i8** %7, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @_PATH_PRINTCAP, align 4
  %47 = call i8* @strdup(i32 %46)
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call %struct.skiminfo* @skim_printcap(i8* %49, i32 %50)
  store %struct.skiminfo* %51, %struct.skiminfo** %6, align 8
  %52 = load %struct.skiminfo*, %struct.skiminfo** %6, align 8
  %53 = icmp eq %struct.skiminfo* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* @problems, align 4
  br label %141

55:                                               ; preds = %48
  %56 = load %struct.skiminfo*, %struct.skiminfo** %6, align 8
  %57 = getelementptr inbounds %struct.skiminfo, %struct.skiminfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.skiminfo*, %struct.skiminfo** %6, align 8
  %62 = getelementptr inbounds %struct.skiminfo, %struct.skiminfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @problems, align 4
  br label %141

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.printer*, %struct.printer** %15, align 8
  %67 = call i32 @firstprinter(%struct.printer* %66, i32* %9)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.printer*, %struct.printer** %15, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @interpret_error(%struct.printer* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %113

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %124, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  store i64 0, i64* @errno, align 8
  %83 = load %struct.printer*, %struct.printer** %15, align 8
  %84 = getelementptr inbounds %struct.printer, %struct.printer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @stat(i32 %85, %struct.stat* %16)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %80
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @ENOENT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.printer*, %struct.printer** %15, align 8
  %97 = call i32 @make_spool_dir(%struct.printer* %96)
  br label %108

98:                                               ; preds = %92, %88
  %99 = load i32, i32* @problems, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @problems, align 4
  %101 = load %struct.printer*, %struct.printer** %15, align 8
  %102 = getelementptr inbounds %struct.printer, %struct.printer* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.printer*, %struct.printer** %15, align 8
  %105 = getelementptr inbounds %struct.printer, %struct.printer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %98, %95
  br label %112

109:                                              ; preds = %80
  %110 = load %struct.printer*, %struct.printer** %15, align 8
  %111 = call i32 @note_spool_dir(%struct.printer* %110, %struct.stat* %16)
  br label %112

112:                                              ; preds = %109, %108
  br label %113

113:                                              ; preds = %123, %112, %75
  %114 = load %struct.printer*, %struct.printer** %15, align 8
  %115 = call i32 @nextprinter(%struct.printer* %114, i32* %9)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.printer*, %struct.printer** %15, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @interpret_error(%struct.printer* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %113

124:                                              ; preds = %120, %113
  br label %77

125:                                              ; preds = %77
  %126 = call i32 (...) @check_spool_dirs()
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.skiminfo*, %struct.skiminfo** %6, align 8
  %129 = getelementptr inbounds %struct.skiminfo, %struct.skiminfo* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.skiminfo*, %struct.skiminfo** %6, align 8
  %134 = getelementptr inbounds %struct.skiminfo, %struct.skiminfo* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %135, i8* %136)
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %132, %125
  br label %141

141:                                              ; preds = %140, %60, %54
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i32, i32* @problems, align 4
  ret i32 %144
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @setprintcap(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.skiminfo* @skim_printcap(i8*, i32) #1

declare dso_local i32 @firstprinter(%struct.printer*, i32*) #1

declare dso_local i64 @interpret_error(%struct.printer*, i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @make_spool_dir(%struct.printer*) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i32 @note_spool_dir(%struct.printer*, %struct.stat*) #1

declare dso_local i32 @nextprinter(%struct.printer*, i32*) #1

declare dso_local i32 @check_spool_dirs(...) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
